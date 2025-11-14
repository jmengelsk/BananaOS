.class public final synthetic Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataMaintenanceService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataMaintenanceService;ILandroid/app/job/JobParameters;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataMaintenanceService;

    iput p2, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$2:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataMaintenanceService;

    iget v1, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$2:Landroid/app/job/JobParameters;

    sget v2, Lcom/android/server/people/data/DataMaintenanceService;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/android/server/people/PeopleServiceInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/PeopleServiceInternal;

    iget-object v3, v0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/people/PeopleServiceInternal;->pruneDataForUser(ILandroid/os/CancellationSignal;)V

    iget-object v1, v0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
