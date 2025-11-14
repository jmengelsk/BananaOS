.class public final synthetic Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;

    iput-object p2, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    iget v1, v0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mCurrentUserId:I

    const/16 v2, -0x2710

    const-string/jumbo v3, "[HWRS_SYS]SemHwrsService"

    if-eq v1, v2, :cond_18

    const-string/jumbo v1, "stopUser entered"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {v1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->stopUser()V

    :cond_18
    invoke-virtual {p0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->setCurrentUserHandle(Landroid/os/UserHandle;)V

    iget-object v0, v0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->startUser(Landroid/os/UserHandle;)V

    const-string/jumbo p0, "startUser entered"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
