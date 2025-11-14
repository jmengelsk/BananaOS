.class public final synthetic Lcom/android/server/textclassifier/IconsContentProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# instance fields
.field public final synthetic f$0:Lcom/android/server/textclassifier/IconsContentProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/textclassifier/IconsContentProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/IconsContentProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/textclassifier/IconsContentProvider;

    return-void
.end method


# virtual methods
.method public final writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/textclassifier/IconsContentProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/textclassifier/IconsContentProvider;

    check-cast p5, Landroid/util/Pair;

    sget p3, Lcom/android/server/textclassifier/IconsContentProvider;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_9
    new-instance p3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p3, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_39

    :try_start_e
    iget-object p1, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;

    iget-object p4, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iget-object p5, p1, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->id:I

    invoke-static {p5, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/textclassifier/IconsContentProvider;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    invoke-virtual {p0, p1, p4, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_3b

    :try_start_35
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception p0

    goto :goto_45

    :catchall_3b
    move-exception p0

    :try_start_3c
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p1

    :try_start_41
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw p0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_39

    :goto_45
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Error retrieving icon for uri: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IconsContentProvider"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
