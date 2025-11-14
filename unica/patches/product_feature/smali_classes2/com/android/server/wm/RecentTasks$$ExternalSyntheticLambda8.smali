.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentTasks;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentTasks;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/RecentTasks;

    iput p2, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/RecentTasks;

    iget p0, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$1:I

    check-cast p1, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/RecentTasks;->removeDedicatedProcessFromPackage(ILjava/lang/String;)V

    return-void
.end method
