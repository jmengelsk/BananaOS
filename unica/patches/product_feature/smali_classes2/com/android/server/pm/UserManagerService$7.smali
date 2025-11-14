.class public final Lcom/android/server/pm/UserManagerService$7;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$7;->val$userId:I

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    new-instance p1, Ljava/lang/Thread;

    iget p2, p0, Lcom/android/server/pm/UserManagerService$7;->val$userId:I

    new-instance p3, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerService$7;I)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
