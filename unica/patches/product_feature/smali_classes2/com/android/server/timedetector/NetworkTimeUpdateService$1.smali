.class public final Lcom/android/server/timedetector/NetworkTimeUpdateService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mOnAlarmListener:Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;

.field public final synthetic val$alarmManager:Landroid/app/AlarmManager;

.field public final synthetic val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/app/AlarmManager;Lcom/android/server/timedetector/TimeDetectorInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    new-instance p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;

    invoke-direct {p2, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V

    iput-object p2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->mOnAlarmListener:Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;

    return-void
.end method
