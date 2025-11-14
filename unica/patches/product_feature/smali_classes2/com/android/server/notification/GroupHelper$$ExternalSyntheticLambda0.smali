.class public final synthetic Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget p0, p0, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    packed-switch p0, :pswitch_data_94

    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "com.android.systemui"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    :cond_28
    move v1, v2

    :cond_29
    return v1

    :pswitch_2a  #0x5
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo p1, "android.ongoingActivityNoti.style"

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_3c

    move v1, v2

    :cond_3c
    return v1

    :pswitch_3d  #0x4
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "android.app.recs"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-ge p0, v0, :cond_51

    move v1, v2

    :cond_51
    return v1

    :pswitch_52  #0x3
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "android.app.news"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_66

    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-ge p0, v0, :cond_66

    move v1, v2

    :cond_66
    return v1

    :pswitch_67  #0x2
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "android.app.social"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-ge p0, v0, :cond_7b

    move v1, v2

    :cond_7b
    return v1

    :pswitch_7c  #0x1
    sget-boolean p0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    return v2

    :pswitch_7f  #0x0
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "android.app.promotions"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_93

    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-ge p0, v0, :cond_93

    move v1, v2

    :cond_93
    return v1

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_7f  #00000000
        :pswitch_7c  #00000001
        :pswitch_67  #00000002
        :pswitch_52  #00000003
        :pswitch_3d  #00000004
        :pswitch_2a  #00000005
    .end packed-switch
.end method
