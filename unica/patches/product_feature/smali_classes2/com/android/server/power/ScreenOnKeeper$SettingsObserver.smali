.class public final Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenOnKeeper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenOnKeeper;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;->this$0:Lcom/android/server/power/ScreenOnKeeper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .registers 5

    const-string/jumbo p1, "ScreenOnKeeper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[api] SettingsObserver: onChange: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;->this$0:Lcom/android/server/power/ScreenOnKeeper;

    iget-object p1, p1, Lcom/android/server/power/ScreenOnKeeper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1a
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;->this$0:Lcom/android/server/power/ScreenOnKeeper;

    invoke-static {p0}, Lcom/android/server/power/ScreenOnKeeper;->-$$Nest$mhandleSettingsChangedLocked(Lcom/android/server/power/ScreenOnKeeper;)V

    monitor-exit p1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p0
.end method
