.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;
.super Landroid/util/LruCache;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Landroid/os/IBinder;

    check-cast p3, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    check-cast p4, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipient:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_10
    return-void
.end method
