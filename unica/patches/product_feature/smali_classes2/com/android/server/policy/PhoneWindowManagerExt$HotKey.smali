.class public final Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public guideDialog:Landroid/app/AlertDialog;

.field public isTriggered:Z

.field public keyCode:I

.field public final registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->keyCode:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    return-void
.end method


# virtual methods
.method public final saLogging(ILjava/lang/String;Z)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    const-string/jumbo p1, "PKBD0030"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "PKBD0031"

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_1

    const-string/jumbo p1, "PKBD0028"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "PKBD0029"

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_2

    const-string/jumbo p1, "PKBD0026"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "PKBD0027"

    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x442
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
