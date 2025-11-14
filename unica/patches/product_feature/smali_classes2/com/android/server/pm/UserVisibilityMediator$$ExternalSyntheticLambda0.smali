.class public final synthetic Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

    iput p2, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

    iget v1, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$2:Z

    sget-boolean v2, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    invoke-interface {v0, v1, p0}, Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;->onUserVisibilityChanged(IZ)V

    return-void
.end method
