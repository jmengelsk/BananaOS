.class public final Lcom/android/server/pm/AutoDisableHandler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;

    invoke-direct {v0, p0}, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;-><init>(Lcom/android/server/pm/AutoDisableHandler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
