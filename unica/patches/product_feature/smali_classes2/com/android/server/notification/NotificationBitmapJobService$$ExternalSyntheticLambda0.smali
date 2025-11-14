.class public final synthetic Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationBitmapJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationBitmapJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationBitmapJobService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationBitmapJobService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    sget v1, Lcom/android/server/notification/NotificationBitmapJobService;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-interface {v1}, Lcom/android/server/notification/NotificationManagerInternal;->removeBitmaps()V

    invoke-static {v0}, Lcom/android/server/notification/NotificationBitmapJobService;->scheduleJob(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
