.class public final synthetic Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/slice/PinnedSliceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/PinnedSliceState;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/slice/PinnedSliceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/slice/PinnedSliceState;

    packed-switch v0, :pswitch_data_ba

    const-string/jumbo v0, "Unable to contact "

    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    iget-object v1, v1, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    move-object v1, v2

    goto :goto_22

    :cond_1d
    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    :goto_22
    if-nez v1, :cond_2a

    if-eqz v1, :cond_56

    :goto_26
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_56

    :cond_2a
    :try_start_2a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "slice_uri"

    iget-object v5, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_3e

    :try_start_37
    const-string/jumbo v4, "unpin"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3d} :catch_40
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3e

    goto :goto_26

    :catchall_3e
    move-exception p0

    goto :goto_57

    :catch_40
    move-exception v2

    :try_start_41
    const-string/jumbo v3, "PinnedSliceState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_41 .. :try_end_55} :catchall_3e

    goto :goto_26

    :cond_56
    :goto_56
    return-void

    :goto_57
    :try_start_57
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw p0

    :pswitch_60  #0x0
    const-string/jumbo v0, "Unable to contact "

    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    iget-object v1, v1, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_76

    move-object v1, v2

    goto :goto_7b

    :cond_76
    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    :goto_7b
    if-nez v1, :cond_83

    if-eqz v1, :cond_af

    :goto_7f
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_af

    :cond_83
    :try_start_83
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "slice_uri"

    iget-object v5, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_90
    .catchall {:try_start_83 .. :try_end_90} :catchall_97

    :try_start_90
    const-string/jumbo v4, "pin"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_96} :catch_99
    .catchall {:try_start_90 .. :try_end_96} :catchall_97

    goto :goto_7f

    :catchall_97
    move-exception p0

    goto :goto_b0

    :catch_99
    move-exception v2

    :try_start_9a
    const-string/jumbo v3, "PinnedSliceState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catchall {:try_start_9a .. :try_end_ae} :catchall_97

    goto :goto_7f

    :cond_af
    :goto_af
    return-void

    :goto_b0
    :try_start_b0
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4

    goto :goto_b8

    :catchall_b4
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b8
    throw p0

    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_60  #00000000
    .end packed-switch
.end method
