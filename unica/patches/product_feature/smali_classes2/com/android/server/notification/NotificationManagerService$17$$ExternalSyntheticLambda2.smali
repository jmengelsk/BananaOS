.class public final synthetic Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$17;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$17;ILandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda2;->f$2:Landroid/net/Uri;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p0, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    move-object v1, v0

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    return-void
.end method
