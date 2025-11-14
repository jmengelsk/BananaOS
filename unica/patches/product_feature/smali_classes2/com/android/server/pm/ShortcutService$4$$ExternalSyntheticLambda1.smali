.class public final synthetic Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService$4;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$4;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ShortcutService$4;

    iput p2, p0, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ShortcutService$4;

    iget p0, p0, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;->f$1:I

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    return-void
.end method
