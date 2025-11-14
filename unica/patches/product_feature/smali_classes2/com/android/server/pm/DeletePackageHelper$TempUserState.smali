.class public final Lcom/android/server/pm/DeletePackageHelper$TempUserState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final enabledState:I

.field public final installed:Z

.field public final lastDisableAppCaller:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->enabledState:I

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->installed:Z

    return-void
.end method
