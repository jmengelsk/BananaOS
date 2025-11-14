.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/server/power/PowerManagerService$1;

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdisableAbusiveWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/server/power/PowerManagerService$1;

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdisableAbusiveWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/server/power/PowerManagerService;

    check-cast p1, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;

    sget-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUpperLimit:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    iget p1, p1, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mBrightnessLimitPeriod:I

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitPeriod:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
