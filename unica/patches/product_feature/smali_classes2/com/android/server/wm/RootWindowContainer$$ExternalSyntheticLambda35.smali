.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Ljava/io/FileDescriptor;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:[Z


# direct methods
.method public synthetic constructor <init>([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$0:[Z

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$2:Ljava/io/FileDescriptor;

    iput-boolean p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$4:Z

    iput-object p6, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$6:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$0:[Z

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$1:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$2:Ljava/io/FileDescriptor;

    iget-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$3:Z

    iget-boolean v6, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$4:Z

    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$5:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->f$6:[Z

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    const/4 p1, 0x0

    aget-boolean v2, v0, p1

    if-eqz v2, :cond_19

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    :cond_19
    const-string v2, "  "

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda25;)Z

    move-result v1

    aput-boolean v1, v0, p1

    aget-boolean v0, p0, p1

    or-int/2addr v0, v1

    aput-boolean v0, p0, p1

    return-void
.end method
