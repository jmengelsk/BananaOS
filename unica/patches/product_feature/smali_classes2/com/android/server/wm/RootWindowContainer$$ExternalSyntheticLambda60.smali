.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;I)V
    .registers 5

    iput p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;->$r8$classId:I

    packed-switch v0, :pswitch_data_44

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lcom/android/server/wm/Task;

    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-void

    :pswitch_1d  #0x0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, v1, :cond_43

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v3, :cond_43

    if-eq v1, v3, :cond_43

    if-ne v2, v3, :cond_40

    goto :goto_43

    :cond_40
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_43
    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_1d  #00000000
    .end packed-switch
.end method
