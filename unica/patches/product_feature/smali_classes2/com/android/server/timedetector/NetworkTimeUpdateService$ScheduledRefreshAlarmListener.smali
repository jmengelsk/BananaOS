.class public final Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    iget-object v0, v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    const-string/jumbo v0, "scheduled refresh"

    invoke-static {p0, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V

    return-void
.end method
