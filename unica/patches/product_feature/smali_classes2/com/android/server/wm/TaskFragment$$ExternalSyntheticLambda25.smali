.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskFragment;

.field public final synthetic f$2:Ljava/io/PrintWriter;

.field public final synthetic f$3:Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFragment;Ljava/io/PrintWriter;Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/wm/TaskFragment;

    iput-object p2, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$2:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$3:Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;

    iput-object p4, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$4:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$5:Z

    iput-object p6, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/wm/TaskFragment;

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$2:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$3:Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$4:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$5:Z

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->f$6:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;->run()V

    :cond_14
    invoke-virtual {v0, v1, v3, p0, v4}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
