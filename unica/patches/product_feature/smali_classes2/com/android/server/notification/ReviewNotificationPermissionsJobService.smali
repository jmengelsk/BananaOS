.class public Lcom/android/server/notification/ReviewNotificationPermissionsJobService;
.super Landroid/app/job/JobService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field protected static final JOB_ID:I = 0xd6eed5b


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const-class p0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-interface {p0}, Lcom/android/server/notification/NotificationManagerInternal;->sendReviewPermissionsNotification()V

    const/4 p0, 0x0

    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
