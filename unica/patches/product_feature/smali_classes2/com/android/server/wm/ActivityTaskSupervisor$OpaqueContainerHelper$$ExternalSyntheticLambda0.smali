.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
