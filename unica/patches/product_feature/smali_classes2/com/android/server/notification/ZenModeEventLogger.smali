.class public final Lcom/android/server/notification/ZenModeEventLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-direct {v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iput-object p1, p0, Lcom/android/server/notification/ZenModeEventLogger;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method
