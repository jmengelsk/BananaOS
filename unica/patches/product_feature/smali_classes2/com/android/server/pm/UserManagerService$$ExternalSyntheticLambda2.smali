.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IZILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$1:Z

    iput p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$1:Z

    iget v2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$3:I

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Updated restriction "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") for User "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", callingUid: "

    const-string v1, ", stack: "

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    return-void
.end method
