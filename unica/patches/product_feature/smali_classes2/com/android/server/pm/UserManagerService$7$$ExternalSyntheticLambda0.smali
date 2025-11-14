.class public final synthetic Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService$7;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService$7;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$7;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$7;

    iget p0, p0, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    sget-object v2, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActivityManagerInternal;->onUserRemoving(I)V

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method
