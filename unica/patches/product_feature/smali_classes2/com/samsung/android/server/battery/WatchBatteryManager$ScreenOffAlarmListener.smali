.class public final Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .registers 3

    const-string/jumbo v0, "WatchBatteryManager"

    const-string/jumbo v1, "ScreenOffAlarmListener onAlarm() "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;->this$0:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStop()V

    return-void
.end method
