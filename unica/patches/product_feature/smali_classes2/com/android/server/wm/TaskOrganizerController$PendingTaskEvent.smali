.class public final Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mEventType:I

.field public mForce:Z

.field public mGestureFrom:I

.field public final mTask:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>(ILcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iput p1, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    return-void
.end method
