.class public final Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "action  :  "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "EyeComfortSolutionService"

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string/jumbo p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

    int-to-long v3, p0

    add-long/2addr v0, v3

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :cond_1
    const-string/jumbo p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iput-boolean v0, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    const-string/jumbo p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string/jumbo p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x4

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_4
    const-string/jumbo p2, "android.intent.action.TIME_SET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_5
    const-string/jumbo p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_6
    const-string/jumbo p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/SemHqmManager;

    iput-object p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz p0, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    :cond_7
    :goto_0
    return-void

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
