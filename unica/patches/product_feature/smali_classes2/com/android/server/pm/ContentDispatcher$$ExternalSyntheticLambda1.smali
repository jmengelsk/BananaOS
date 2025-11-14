.class public final synthetic Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ContentDispatcher;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ContentDispatcher;Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ContentDispatcher;

    iput-object p2, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$4:I

    iput-object p6, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v0, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ContentDispatcher;

    iget-object v1, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$4:I

    iget-object v5, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$6:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    const-string/jumbo v6, "android"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_31

    if-ltz v3, :cond_31

    const/4 v6, 0x1

    goto :goto_32

    :cond_31
    const/4 v6, 0x0

    :goto_32
    const-string v7, ""

    if-eqz v6, :cond_4c

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pm/ContentDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_4c
    iget-object v8, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    monitor-enter v8

    :try_start_4f
    iget-object v9, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_bf

    const-string/jumbo v9, "android"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_bf

    iget-object v9, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/ContentDispatcher$PdfInfo;

    iget-object v9, v9, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a6

    const-string/jumbo v9, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a6

    const-string/jumbo v9, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a6

    const-string/jumbo v9, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a6

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ContentDispatcher;->clearPdfTask(I)V

    goto :goto_bf

    :catchall_a3
    move-exception p0

    goto/16 :goto_13a

    :cond_a6
    if-eqz v5, :cond_bc

    iget-object v9, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/ContentDispatcher$PdfInfo;

    iget-object v9, v9, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_bf

    :cond_bc
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ContentDispatcher;->clearPdfTask(I)V

    :cond_bf
    :goto_bf
    if-eqz v6, :cond_f1

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ContentDispatcher;->clearPdfTask(I)V

    const-string/jumbo p0, "pdf"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    const-string/jumbo p0, "application/pdf"

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    monitor-exit v8

    return-void

    :cond_dc
    iget-object p0, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/android/server/pm/ContentDispatcher$PdfInfo;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v3, v4, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mCallingUid:I

    iput-object v1, v4, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mIntent:Landroid/content/Intent;

    iput-object v2, v4, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_138

    :cond_f1
    iget-object v1, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_138

    iget-object v1, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_138

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    iget-object v1, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ContentDispatcher$PdfInfo;

    iget-object v1, v1, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    iget-object v1, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ContentDispatcher$PdfInfo;

    invoke-virtual {v1, v2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_138
    :goto_138
    monitor-exit v8

    return-void

    :goto_13a
    monitor-exit v8
    :try_end_13b
    .catchall {:try_start_4f .. :try_end_13b} :catchall_a3

    throw p0
.end method
