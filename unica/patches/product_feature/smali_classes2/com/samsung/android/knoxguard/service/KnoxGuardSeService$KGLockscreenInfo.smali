.class Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mClientName:Ljava/lang/String;

.field private mCustomAppName:Ljava/lang/String;

.field private mCustomAppPackageName:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSkipPin:Z

.field private mSkipSupport:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mClientName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mPhoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mEmailAddress:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipPin:Z

    iput-boolean p6, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipSupport:Z

    invoke-virtual {p0, p7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getBundle()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "customer_package_name"

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "customer_app_name"

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final getClientName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mClientName:Ljava/lang/String;

    return-object p0
.end method

.method public final getEmailAddress()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mEmailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public final getSkipPin()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipPin:Z

    return p0
.end method

.method public final getSkipSupport()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipSupport:Z

    return p0
.end method

.method public final setBundle(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_8

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    return-void

    :cond_8
    const-string/jumbo v1, "customer_package_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    goto :goto_1a

    :cond_18
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    :goto_1a
    const-string/jumbo v1, "customer_app_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    return-void

    :cond_2a
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    return-void
.end method

.method public final setClientName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mClientName:Ljava/lang/String;

    return-void
.end method

.method public final setEmailAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public final setSkipPin(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipPin:Z

    return-void
.end method

.method public final setSkipSupport(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipSupport:Z

    return-void
.end method
