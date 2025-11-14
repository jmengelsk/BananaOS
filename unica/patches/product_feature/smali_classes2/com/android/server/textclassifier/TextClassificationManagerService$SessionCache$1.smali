.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->remove(Landroid/os/IBinder;)V

    return-void
.end method
