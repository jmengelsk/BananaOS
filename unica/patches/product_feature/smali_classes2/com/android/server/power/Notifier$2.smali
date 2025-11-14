.class public final Lcom/android/server/power/Notifier$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/Notifier;

.field public final synthetic val$wakefulness:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$2;->val$wakefulness:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    iget-object v0, v0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget p0, p0, Lcom/android/server/power/Notifier$2;->val$wakefulness:I

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->onWakefulnessChanged(I)V

    return-void
.end method
