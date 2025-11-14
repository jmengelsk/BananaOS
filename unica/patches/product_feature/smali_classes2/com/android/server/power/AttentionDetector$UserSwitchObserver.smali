.class public final Lcom/android/server/power/AttentionDetector$UserSwitchObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/AttentionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AttentionDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitching(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;->this$0:Lcom/android/server/power/AttentionDetector;

    iget-object p1, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    return-void
.end method
