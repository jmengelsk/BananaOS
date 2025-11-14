.class Lcom/android/server/policy/PhoneWindowManagerExt$Injector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    return-void
.end method
