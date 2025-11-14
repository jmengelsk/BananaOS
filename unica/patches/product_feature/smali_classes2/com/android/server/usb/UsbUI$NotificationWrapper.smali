.class public final Lcom/android/server/usb/UsbUI$NotificationWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final action:Landroid/app/Notification$Action;

.field public final alertOnce:Z

.field public final channel:Ljava/lang/String;

.field public final contentInent:Landroid/app/PendingIntent;

.field public final icon:I

.field public final instant:Z

.field public final messageResId:I

.field public final ongoing:Z

.field public final priority:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;

.field public final titleResId:I


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI;IIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    const-string/jumbo v1, "USB"

    iput-object v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    iput p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->titleResId:I

    iput p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->messageResId:I

    iput p4, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->icon:I

    iput-object p6, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->action:Landroid/app/Notification$Action;

    iput-object p5, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->contentInent:Landroid/app/PendingIntent;

    const-wide/16 p2, 0x1

    invoke-static {p7, p8, p2, p3}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_28

    iput-boolean p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    :cond_28
    const-wide/16 p4, 0x2

    invoke-static {p7, p8, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result p2

    if-eqz p2, :cond_32

    iput-boolean p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    :cond_32
    const-wide/16 p4, 0x4

    invoke-static {p7, p8, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result p2

    if-eqz p2, :cond_3c

    iput-boolean p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    :cond_3c
    const-wide/16 p4, 0x8

    invoke-static {p7, p8, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result p2

    if-eqz p2, :cond_48

    const-string p2, "ALERTS"

    iput-object p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    :cond_48
    const-wide/16 p4, 0x10

    invoke-static {p7, p8, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result p2

    if-eqz p2, :cond_53

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    :cond_53
    const-wide/16 p4, 0x20

    invoke-static {p7, p8, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result p2

    if-eqz p2, :cond_5e

    const/4 p2, -0x2

    iput p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    :cond_5e
    const-wide/16 p4, 0x40

    invoke-static {p7, p8, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result p2

    if-eqz p2, :cond_68

    iput p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    :cond_68
    const-wide/16 p2, 0x80

    invoke-static {p7, p8, p2, p3}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_73

    iput p3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    :cond_73
    const-wide/16 p4, 0x100

    invoke-static {p7, p8, p4, p5}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result p2

    if-eqz p2, :cond_9d

    const-string/jumbo p2, "USBImpLow"

    iput-object p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    new-instance p2, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    const-string/jumbo p4, "USBImportanceLow"

    invoke-direct {p2, p0, p4, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string/jumbo p0, "USB connector connection"

    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_9d
    return-void
.end method


# virtual methods
.method public final build()Landroid/app/Notification;
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    iget v2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->messageResId:I

    if-eqz v2, :cond_11

    iget-object v3, v1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->icon:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const v4, 0x106001c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    if-eqz v0, :cond_62

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string/jumbo v5, "USBImpLow"

    iget-object v6, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_62
    if-eqz v2, :cond_67

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_67
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->action:Landroid/app/Notification$Action;

    if-eqz v0, :cond_6e

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_6e
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    if-eqz v0, :cond_76

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto :goto_79

    :cond_76
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :goto_79
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    if-eqz v0, :cond_80

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    :cond_80
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->contentInent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_87

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_87
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->titleResId:I

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method
