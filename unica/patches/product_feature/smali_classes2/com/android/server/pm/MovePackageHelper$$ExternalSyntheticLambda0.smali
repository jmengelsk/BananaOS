.class public final synthetic Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/MovePackageHelper;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/io/File;

.field public final synthetic f$4:J

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JII)V
    .registers 10

    iput p9, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/MovePackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    iput-wide p3, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    iput-wide p6, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$4:J

    iput p8, p0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$5:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_ae

    iget-object v1, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v2, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    iget-wide v3, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$2:J

    iget-object v5, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    iget-wide v6, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$4:J

    iget v8, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$5:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    const/4 v10, 0x0

    move v0, v10

    :goto_1d
    :try_start_1d
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x1

    invoke-virtual {v2, v12, v13, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v11
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_25} :catch_28

    if-eqz v11, :cond_28

    return-void

    :catch_28
    :cond_28
    invoke-virtual {v5}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v11

    sub-long v11, v3, v11

    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    const/16 v14, 0xa

    if-eqz v13, :cond_46

    const-wide/16 v15, 0x50

    mul-long/2addr v11, v15

    div-long v15, v11, v6

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x50

    invoke-static/range {v15 .. v20}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v11

    long-to-int v11, v11

    add-int/2addr v11, v14

    goto :goto_48

    :cond_46
    const/16 v11, 0x64

    :goto_48
    if-lt v0, v11, :cond_56

    const/16 v11, 0x5a

    if-ge v0, v11, :cond_53

    invoke-virtual {v9, v14}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v11

    goto :goto_54

    :cond_53
    move v11, v10

    :goto_54
    add-int/2addr v0, v11

    goto :goto_57

    :cond_56
    move v0, v11

    :goto_57
    iget-object v11, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v11, v8, v0}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    goto :goto_1d

    :pswitch_5f  #0x0
    iget-object v1, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v2, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    iget-wide v3, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$2:J

    iget-object v5, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    iget-wide v6, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$4:J

    iget v0, v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;->f$5:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    const/4 v9, 0x0

    move v10, v9

    :goto_75
    :try_start_75
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x1

    invoke-virtual {v2, v12, v13, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v11
    :try_end_7d
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_7d} :catch_80

    if-eqz v11, :cond_80

    return-void

    :catch_80
    :cond_80
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v11

    sub-long v11, v3, v11

    const-wide/16 v13, 0x50

    mul-long/2addr v11, v13

    div-long v13, v11, v6

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x50

    invoke-static/range {v13 .. v18}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v11

    long-to-int v11, v11

    add-int/lit8 v11, v11, 0xa

    if-lt v10, v11, :cond_a5

    const/16 v11, 0x5a

    if-ge v10, v11, :cond_a2

    const/4 v11, 0x5

    invoke-virtual {v8, v11}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v11

    goto :goto_a3

    :cond_a2
    move v11, v9

    :goto_a3
    add-int/2addr v10, v11

    goto :goto_a6

    :cond_a5
    move v10, v11

    :goto_a6
    iget-object v11, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v11, v0, v10}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    goto :goto_75

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_5f  #00000000
    .end packed-switch
.end method
