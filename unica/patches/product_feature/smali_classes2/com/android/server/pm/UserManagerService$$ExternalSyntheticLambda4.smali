.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final logEvent(ILjava/lang/String;)V
    .registers 4

    sget-object p1, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "UserManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;->f$1:I

    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    if-eqz p2, :cond_18

    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    :cond_18
    return-void
.end method
