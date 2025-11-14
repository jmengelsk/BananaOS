.class public final Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/SingleKeyGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget-object v1, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->activeRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget-object v6, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->event:Landroid/view/KeyEvent;

    iget v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->policyFlags:I

    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->longPressType:I

    const/4 v4, 0x6

    const-string/jumbo v5, "SingleKeyGesture"

    if-nez v6, :cond_0

    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v4, :cond_0

    const-string/jumbo p0, "event is null."

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo p0, "No active rule."

    invoke-static {v5, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v7, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->keyCode:I

    move v8, v2

    iget v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->pressCount:I

    move v9, v3

    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->displayId:I

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x2

    const/4 v11, 0x1

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    if-eqz p1, :cond_b

    if-eq p1, v11, :cond_9

    const-string v8, " on display "

    if-eq p1, v10, :cond_5

    const/4 v6, 0x3

    if-eq p1, v6, :cond_3

    if-eq p1, v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onReset()V

    return-void

    :cond_3
    sget-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Detect key up "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-wide v6, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    iget v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->deviceId:I

    iget v5, v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->metaState:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyUp(IIIIJ)V

    return-void

    :cond_5
    sget-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Detect press "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2, v5}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_6
    if-ne v2, v11, :cond_8

    iget-wide v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v9

    cmp-long p1, v7, v9

    if-lez p1, :cond_7

    const-string/jumbo p0, "SinglePress downTime is older than multiPress triggered time."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-wide p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    invoke-virtual {v1, p0, p1, v6, v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onPress(JLandroid/view/KeyEvent;I)V

    return-void

    :cond_8
    move v4, v2

    move v5, v3

    iget-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onMultiPress(JIILandroid/view/KeyEvent;)V

    return-void

    :cond_9
    sget-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Detect very long press "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-wide p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onVeryLongPress()V

    return-void

    :cond_b
    sget-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    const-string v0, " type="

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Detect long press "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " info : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    iget v2, p1, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mKeyCode:I

    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    if-ne v7, v2, :cond_d

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mTypeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v11, :cond_d

    const-string/jumbo p0, "The long press already have been consumed"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->reset()V

    return-void

    :cond_d
    iget p1, v3, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mKeyCode:I

    if-nez p1, :cond_e

    iget-object p1, v3, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mTypeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    iget p1, v3, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mKeyCode:I

    if-ne v7, p1, :cond_f

    iget-object p1, v3, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mTypeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, v10, :cond_10

    :cond_f
    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->reset()V

    :cond_10
    :goto_0
    const-string/jumbo p1, "addInfo, keyCode="

    invoke-static {v7, v9, p1, v0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v7, v3, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mKeyCode:I

    iget-object p1, v3, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mTypeList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    invoke-virtual {v1, p0, p1, v6, v8}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(JLandroid/view/KeyEvent;I)V

    return-void
.end method
