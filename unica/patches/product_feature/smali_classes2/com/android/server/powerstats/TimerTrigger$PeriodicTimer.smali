.class public final Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mMsgType:I

.field public final mPeriodMs:J

.field public final synthetic this$0:Lcom/android/server/powerstats/TimerTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/TimerTrigger;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    iput-wide p3, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mPeriodMs:J

    iput p5, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mMsgType:I

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->run()V

    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    iget-object v0, v0, Lcom/android/server/powerstats/TimerTrigger;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mPeriodMs:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    iget p0, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mMsgType:I

    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
