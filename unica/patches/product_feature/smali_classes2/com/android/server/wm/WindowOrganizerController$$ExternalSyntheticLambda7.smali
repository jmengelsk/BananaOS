.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/wm/SafeActivityOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iput p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/wm/SafeActivityOptions;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iget v5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$2:I

    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/wm/SafeActivityOptions;

    iget-object p0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v3, v1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    const/4 v7, 0x0

    iget v4, v1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;Z)I

    move-result p0

    return p0
.end method
