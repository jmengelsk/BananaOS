.class public final synthetic Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;JLjava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iput-wide p2, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$2:J

    iput-object p4, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-wide v3, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$2:J

    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;

    iget-object p0, v0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/android/server/SystemServiceManager;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/SystemServiceManager;

    iget p0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_24

    iget-object v1, v0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x3

    iget-object v7, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void

    :cond_24
    const-string/jumbo p0, "QuotaTracker"

    const-string v0, "Alarm not scheduled because boot isn\'t completed"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
