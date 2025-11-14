.class public abstract Lcom/android/server/pm/VerificationUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PACKAGE_VERIFIED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo p1, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p0, "android.content.pm.extra.VERIFICATION_RESULT"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_26

    const-string/jumbo p0, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_26
    const-string/jumbo p0, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p0, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {p6, v0, p5, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .registers 16

    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_ae

    :cond_8
    iget-object v0, p1, Lcom/android/server/pm/PackageVerificationState;->mVerifyingSession:Lcom/android/server/pm/VerifyingSession;

    if-eqz v0, :cond_16

    iget-object v1, v0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_14
    move-object v3, v1

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_14

    :goto_18
    iget-boolean v1, p1, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_2c

    iget-boolean v1, p1, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez v1, :cond_23

    goto :goto_2c

    :cond_23
    iget-boolean v1, p1, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, p1, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    goto :goto_2d

    :cond_2a
    move v1, v10

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v1, v9

    :goto_2d
    if-eqz v1, :cond_31

    :goto_2f
    move v4, p2

    goto :goto_33

    :cond_31
    const/4 p2, -0x1

    goto :goto_2f

    :goto_33
    if-eqz p4, :cond_43

    if-eqz v0, :cond_43

    iget-object v7, v0, Lcom/android/server/pm/VerifyingSession;->mUser:Landroid/os/UserHandle;

    iget-object v8, p4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/server/pm/VerifyingSession;->mDataLoaderType:I

    move v2, p0

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    goto :goto_44

    :cond_43
    move v2, p0

    :goto_44
    iget-boolean p0, p1, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-eqz p0, :cond_56

    iget-boolean p0, p1, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez p0, :cond_4d

    goto :goto_56

    :cond_4d
    iget-boolean p0, p1, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz p0, :cond_54

    iget-boolean p0, p1, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    goto :goto_57

    :cond_54
    move p0, v10

    goto :goto_57

    :cond_56
    :goto_56
    move p0, v9

    :goto_57
    const-string/jumbo p2, "PackageManager"

    if-eqz p0, :cond_6e

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Continuing with installation of "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_91

    iget p2, v0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    if-ne p2, v10, :cond_91

    const/16 p2, -0x16

    iput p2, v0, Lcom/android/server/pm/VerifyingSession;->mRet:I

    iput-object p0, v0, Lcom/android/server/pm/VerifyingSession;->mErrorMessage:Ljava/lang/String;

    :cond_91
    :goto_91
    if-eqz p4, :cond_9e

    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result p0

    if-eqz p0, :cond_9e

    iget-object p0, p4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_9e
    const-wide/32 p0, 0x40000

    const-string/jumbo p2, "verification"

    invoke-static {p0, p1, p2, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    if-eqz v0, :cond_ae

    iput-boolean v9, v0, Lcom/android/server/pm/VerifyingSession;->mWaitForVerificationToComplete:Z

    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    :cond_ae
    :goto_ae
    return-void
.end method

.method public static processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V
    .registers 5

    iget v0, p2, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget p2, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)V

    const-string v0, "Install not allowed"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method public static processVerificationResponseOnTimeout(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V
    .registers 7

    iget v0, p2, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget-object v1, p1, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    iget p2, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    if-nez v1, :cond_e

    goto :goto_1e

    :cond_e
    iget-object v1, p1, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v1, p1, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)V

    :cond_1e
    :goto_1e
    const-string/jumbo v0, "Verification timed out"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method
