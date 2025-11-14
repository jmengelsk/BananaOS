.class public final synthetic Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/AlarmQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/AlarmQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/AlarmQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/AlarmQueue;

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    return-void
.end method
