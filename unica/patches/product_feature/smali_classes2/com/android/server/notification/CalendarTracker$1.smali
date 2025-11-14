.class public final Lcom/android/server/notification/CalendarTracker$1;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/CalendarTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/CalendarTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    sget-boolean p0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "onChange selfChange="

    const-string v0, "ConditionProviders.CT"

    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onChange selfChange="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " uri="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " u="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    iget-object p1, p1, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConditionProviders.CT"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/EventConditionProvider$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "ConditionProviders.ECP"

    const-string/jumbo p2, "mTrackerCallback.onChanged"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    iget-object p1, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Lcom/android/server/notification/EventConditionProvider$4;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Lcom/android/server/notification/EventConditionProvider$4;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
